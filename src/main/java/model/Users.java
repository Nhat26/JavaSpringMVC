package model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users", catalog = "quanlybanhang")
public class Users implements java.io.Serializable {

	private long Id_user;
	private String name;
	private String email;
	private String password;
	private String typeuser;
	private Timestamp create_at;

	@Override
	public String toString() {
		return "users [Id_user=" + Id_user + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", typeuser=" + typeuser + ", create_at=" + create_at + "]";
	}

	public Users() {
		super();
	}

	public Users(long id_user, String name, String email, String password, String typeuser, Timestamp create_at) {
		super();
		this.Id_user = id_user;
		this.name = name;
		this.email = email;
		this.password = password;
		this.typeuser = typeuser;
		this.create_at = create_at;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "Id_user", unique = true, nullable = false)
	public long getId_user() {
		return Id_user;
	}

	public void setId_user(long id_user) {
		Id_user = id_user;
	}

	@Column(name = "name", length = 250)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "email", length = 250)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "password", length = 250)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "typeuser", length = 250)
	public String getTypeuser() {
		return typeuser;
	}

	public void setTypeuser(String typeuser) {
		this.typeuser = typeuser;
	}

	@Column(name = "typeuser")
	public Timestamp getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Timestamp create_at) {
		this.create_at = create_at;
	}

}
