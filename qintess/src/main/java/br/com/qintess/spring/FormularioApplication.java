package br.com.qintess.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FormularioApplication {

	public static void main(String[] args) {
		SpringApplication.run(FormularioApplication.class, args);
		System.setProperty("java.io.tmpdir", "C:\\Users\\abcde\\Desktop\\Temp");
	}

}
