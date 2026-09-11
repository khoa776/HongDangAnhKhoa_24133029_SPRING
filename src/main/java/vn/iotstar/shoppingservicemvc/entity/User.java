package vn.iotstar.shoppingservicemvc.entity;

import jakarta.persistence.*;
import lombok.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Table(name = "[User]")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "email")
    private String email;

    @Column(name = "username", nullable = false, unique = true)
    private String username;

    @Column(name = "fullname")
    private String fullname;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "avatar")
    private String avatar;

    @Column(name = "roleid")
    private int roleid;

    @Column(name = "phone")
    private String phone;

    @Column(name = "createdDate")
    private Date createdDate;

    @Column(name = "status")
    private int status;

    @Column(name = "otpCode")
    private String otpCode;

    @Column(name = "images")
    private String images;
}