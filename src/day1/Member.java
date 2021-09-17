package day1;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


@ToString
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Member {
	//필드(또는 프로퍼티,속성)
	private String name;
	private String password;
	private String email;
	private int age;
	private String addr;
	private String addr_etc;
	private String gender;
	private String[] hobby;
}
