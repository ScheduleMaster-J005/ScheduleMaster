package com.schedulemaster.services;

import javax.validation.Valid;

import com.schedulemaster.dto.ApiResponse;
import com.schedulemaster.dto.ChangePasswordDTO;
import com.schedulemaster.dto.LoginDTO;
import com.schedulemaster.dto.UpdateDTO;
import com.schedulemaster.dto.UserRegistertaionDTO;

public interface UserService {

	public ApiResponse register(@Valid UserRegistertaionDTO dto);

	public ApiResponse changePassword(ChangePasswordDTO dto, Long id);

	public ApiResponse Login(LoginDTO dto);

	public ApiResponse UpdateInfo(UpdateDTO dto, Long id);

}
