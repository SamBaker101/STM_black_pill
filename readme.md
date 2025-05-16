# STM Black Pill Experiments

## Background

I've had an STM Black Pill in my parts drawer for a while now that I've never had the chance to play with. Im hoping to use this board for a larger project I'm planning but want to spend some time with it first. The purpose of this repo is to run through some basic functional programs (blinky, motor control, sensor input, serial comms ect.) to become more familiar with this board and STM's software suite.

## Hardware

STM Black Pill : STM32F401CCU6

ST-Link V2

## Structure

Since this project will include a number of small independant programs, I will be seperating each program into a function which will enclose it's main loop actions. These functions will be detailed below:

### void Blinky(int delay)

Not too much to say here, this is a standard blinky program which takes a delay value as an argument. The full cycle time will be delay*2 as the delay period is used both after turning the LED on and turning it back off.

I would like to add an argument for this function to specify the GPIO used in future.

## Targets

    - Blinky 
    - Motor Controller
    - Read Data from Sensors
    - Serial Communication (2-way)

