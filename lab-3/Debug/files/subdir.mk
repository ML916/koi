################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../files/example.tab.o \
../files/lex.yy.o 

C_SRCS += \
../files/example.tab.c \
../files/lex.yy.c 

OBJS += \
./files/example.tab.o \
./files/lex.yy.o 

C_DEPS += \
./files/example.tab.d \
./files/lex.yy.d 


# Each subdirectory must supply rules for building sources it contributes
files/%.o: ../files/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


