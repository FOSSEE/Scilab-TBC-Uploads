//scilab 5.4.1
//Windows 7 operating system
//chapter 19 VLSI Technology and Circuits
clc
clear
w=10//w=W/L value of the NMOS transistor in a CMOS inverter
un=1350//un=electron mobility for NMOS transistor in cm^2/V s
up=540//up=electron mobility for PMOS transistor in cm^2/V s
//(Wpu/Lpu)*up*(VINV-VDD-VTHP)^2=(Wpd/Lpd)*un*(VINV-VTHN)^2
//For a symmetrical inverter VINV=(VDD/2) and VTHN=(-VTHP)
//Also for input voltage=VDD/2 both transistors operate in saturation region
//Therefore,up*(Wpu/Lpu)=un*(Wpd/Lpd)
w1=(un*w)/up//w1=Wpu/Lpu=W/L value of the PMOS for a symmetrical inverter
disp(w1,"W/L value of the PMOS transistor in a CMOS inverter is =")
