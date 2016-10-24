################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../29/lexer.o \
../29/parser.o \
../29/parser.tab.o \
../29/symbol.o 

C_SRCS += \
../29/bookparser.c \
../29/emitter.c \
../29/error.c \
../29/init.c \
../29/lexer.c \
../29/main.c \
../29/parser.c \
../29/parser.tab.c \
../29/symbol.c 

OBJS += \
./29/bookparser.o \
./29/emitter.o \
./29/error.o \
./29/init.o \
./29/lexer.o \
./29/main.o \
./29/parser.o \
./29/parser.tab.o \
./29/symbol.o 

C_DEPS += \
./29/bookparser.d \
./29/emitter.d \
./29/error.d \
./29/init.d \
./29/lexer.d \
./29/main.d \
./29/parser.d \
./29/parser.tab.d \
./29/symbol.d 


# Each subdirectory must supply rules for building sources it contributes
29/%.o: ../29/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


