import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import SpringMVC.Controller.email;

@Controller
public class Mailer {

    @RequestMapping(value = "/send-mail", method = RequestMethod.POST)
    public String sendMail(Model model, email email) {
        // Điền thông tin email và mật khẩu của email người gửi
        final String username = "your-email@gmail.com";
        final String password = "your-password";

        // Thiết lập thông tin SMTP Server và Port
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        // Tạo đối tượng Session để kết nối tới SMTP Server
        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    @Override
					protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {
            // Tạo đối tượng Message để gửi email
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email.getFrom()));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(email.getTo()));
            message.setSubject(email.getSubject());
            message.setText(email.getMessage());

            // Gửi email
            Transport.send(message);

            // Thêm thông báo thành công vào model
            model.addAttribute("message", "Gửi email thành công!");

        } catch (MessagingException e) {
            // Thêm thông báo lỗi vào model
            model.addAttribute("message", "Lỗi gửi email: " + e.getMessage());
        }

        // Hiển thị trang kết quả
        return "result";
    }
}
