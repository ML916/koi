################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emitter.c \
../error.c \
../init.c \
../lexer.c \
../main.c \
../parse.c \
../symbol.c 

OBJS += \
./emitter.o \
./error.o \
./init.o \
./lexer.o \
./main.o \
./parse.o \
./symbol.o 

C_DEPS += \
./emitter.d \
./error.d \
./init.d \
./lexer.d \
./main.d \
./parse.d \
./symbol.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


