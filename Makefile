make:
	cd STM_black_pill/Debug/ && make
all:
	cd STM_black_pill/Debug/ && make
load: all
	STM32_Programmer_CLI  -c port=SWD  mode=NORMAL -d build/rc.bin 0x08000000 -s
reset:
	STM32_Programmer_CLI  -c port=SWD  mode=NORMAL -rst
erase:
	STM32_Programmer_CLI  -c port=SWD  mode=NORMAL -e all