//chapter20
//example20.3
//page437

// for power supply A
V_NL1=30 // V
V_FL1=25 // V

regulation1=((V_NL1-V_FL1)/V_FL1)*100

//for power supply B
V_NL2=30 // V
V_FL2=29 // V

regulation2=((V_NL2-V_FL2)/V_FL2)*100

printf("regulation for power supply A =%.3f percent \n",regulation1)
printf("regulation for power supply B =%.3f percent \n",regulation2)

if regulation1>regulation2 then
        printf("thus, power supply B is better \n")
    elseif regulation2>regulation1 then
        printf("thus, power supply A is better \n")
    else    printf("both are equally good \n")
end
