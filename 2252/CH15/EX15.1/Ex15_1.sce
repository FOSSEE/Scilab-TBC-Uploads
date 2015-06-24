

P=50D+3  //power per phase
Power_rating=3*P
Vpp=2300  //primary phase voltage
Vsp=230  //secondary phase voltage
Vpl=sqrt(3)*Vpp  //primary normal line voltage
Vsl=Vsp  //secondary normal line voltage
mprintf("Rating of 3-phase transformer will be-\n3-phase, %d kVA, %d/%d V, star/delta connection\n",Power_rating/1D+3,round(Vpl),round(Vsl))
Ipp=P/Vpp
Ipl=Ipp
Isp=P/Vsp
Isl=sqrt(3)*Isp
mprintf("Primary phase current=%f A\nPrimary line current=%f A\nSecondary phase current=%f A\nSecondary line current=%f A\n",Ipp,Ipl,Isp,Isl)
//calculating voltage regulation
Rp_dash=1.2  //equivalent resistance referred to primary
Xp_dash=1.6  //equivalent reactance referred to primary
VR=Ipp*(Rp_dash*.8+Xp_dash*.6)*100/Vpp
mprintf("Voltage Regulation=%f percent", VR)
