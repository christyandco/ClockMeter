################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/others/imgfont/lv_imgfont.c 

OBJS += \
./lvgl/src/others/imgfont/lv_imgfont.o 

C_DEPS += \
./lvgl/src/others/imgfont/lv_imgfont.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/others/imgfont/%.o lvgl/src/others/imgfont/%.su lvgl/src/others/imgfont/%.cyclo: ../lvgl/src/others/imgfont/%.c lvgl/src/others/imgfont/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I"D:/Asnaviram/Embedded-c/My-workspace/target/ClockMeter" -I"D:/Asnaviram/Embedded-c/My-workspace/target/ClockMeter/hal_stm_lvgl/STM32746G-Discovery" -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-others-2f-imgfont

clean-lvgl-2f-src-2f-others-2f-imgfont:
	-$(RM) ./lvgl/src/others/imgfont/lv_imgfont.cyclo ./lvgl/src/others/imgfont/lv_imgfont.d ./lvgl/src/others/imgfont/lv_imgfont.o ./lvgl/src/others/imgfont/lv_imgfont.su

.PHONY: clean-lvgl-2f-src-2f-others-2f-imgfont

