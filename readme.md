# STM Black Pill Experiments

## Background

I've had an STM Black Pill in my parts drawer for a while now that I've never had the chance to play with. The purpose of this repo is to run through some basic functional programs (blinky, motor control, sensor input, serial comms ect.) to become more familiar with this board and STM's software suite.

## Targets

    - Basic GPIO 
    - Motor Control
    - Read Data from Sensors
    - Serial Communication (2-way)

## Hardware

STM Black Pill : STM32F401CCU6

ST-Link V2

## Structure

Since this project will include a number of small independant programs, I will be seperating each program into a function which will enclose it's main loop actions. For the time being these functions are still included in main. I will comment out all but the functions currently in use in the main_loop in main.c. The functions currently available are:

### void Blinky(uint32_t delay, GPIO_TypeDef* bank, uint16_t pin)

Not too much to say here, this is a standard blinky program which takes a delay value and gpio pin as an argument. The full cycle time will be delay*2 as the delay period is used both after turning the LED on and turning it back off.

### void Pressy(GPIO_TypeDef* bank, uint16_t input_pin, uint16_t output_pin)

Here we are using the two GPIO pins from a single bank. One as input and one as output. The input pin is expected to be set up with a pullup resistor. When it goes low the output pin goes high. I wired this with a button and LED so that when the button is pressed the LED turns on.



