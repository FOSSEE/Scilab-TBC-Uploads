//Example 23.5
Np=50;//Number of loops in the primary
Vp=120;//Primary voltage (V)
Vs=100*10^3;//Secondary voltage (V)
Ns=Np*Vs/Vp;//Number of loops in the secondary
printf('a.Number of loops in the secondary coil = %0.2e',Ns)
Ip=10;//Current in the primary coil (A)
Is=Ip*Np/Ns;//Current in the secondary coil (A)
printf('\nb.Current in the secondary coil = %0.1f mA',Is*1000)
printf('\n\nDiscussion for (b):')
Pp=Ip*Vp;//Power input (W)
printf('\nPower input = %0.2f kW',Pp/1000)
Ps=Is*Vs;//Power output (W)
printf('\nPower output = %0.2f kW',Ps/1000)
if Ps==Pp
    printf('\nPower output is equal to power input')
else
    printf('\nPower output is not equal to power input')
end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
