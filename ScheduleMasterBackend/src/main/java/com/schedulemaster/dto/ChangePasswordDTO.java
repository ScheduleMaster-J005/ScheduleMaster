package com.schedulemaster.dto;

import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ChangePasswordDTO {
	@NotBlank(message = "Old password is required!!")
	private String oldPassword;
	@NotBlank(message = "New password is required!!")
	private String newPassword;
}
