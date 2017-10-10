//example 6.2.1
//calculate power level at op of transponder
//variables
clc
clear
pearth = 500
gain = 105
backoff = 3
outputpower = 40
BWStA = 15
BWStB = 10
BWStC = 5
Pt = 20
EIRPa = 3.0
EIRPb = 4.8
EIRPc = 7.8

PtindB=10*log10(outputpower) - backoff
printf("Power of tansponder is %fdBW \n",PtindB)
BWt = BWStA + BWStB + BWStC
PtA = 10*log10((BWStA/BWt)*Pt)
PtB = 10*log10((BWStB/BWt)*Pt)
PtC = 10*log10((BWStC/BWt)*Pt)
printf("Transponder power output allocated to StA is %f dBW \n",PtA)
printf("Transponder power output allocated to StB is %f dBW\n",PtB)
printf("Transponder power output allocated to StC is %f dBW\n",PtC)

PinA = PtA - gain
PinB = PtB - gain
PinC = PtC - gain
printf("Transponder input power for StA signal is %f dBW\n",PinA)
printf("Transponder input power for StB signal is %f dBW\n",PinB)
printf("Transponder input power for StC signal is %f dBW \n",PinC)

Pte = 10*log10(250)
PStA = Pte - EIRPa
PStB = Pte - EIRPb
PStC = Pte - EIRPc
printf("The Earth Station A transmit power is %f dBW \n",PStA)
printf("The Earth Station B transmit power is %f dBW \n",PStB)
printf("The Earth Station C transmit power is %f dBW\n",PStC)

