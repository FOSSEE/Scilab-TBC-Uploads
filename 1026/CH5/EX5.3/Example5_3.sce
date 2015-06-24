//chapter5,Example5_3,pg 98

V=1450

A1=112*0.03//absorption due to plastered wall

A2=130*0.06//absorption due to wooden floor

A3=170*0.04//absorption due to plastd. celing

A4=20*0.06//absorption due to wooden door

A5=100*1//absorption due to cushioned chairs

sum_as=A1+A2+A3+A4+A5

T1=(0.161*V)/sum_as//reverberation time case-1

T2=(0.161*V)/(sum_as+(60*4.7))//persons=60,A=4.7  case-2

T3=(0.161*V)/(sum_as+(100*4.7))//seat cushioned=100 rev. case-3

printf("rev. time for case-1\n")

printf("T1=%.3f sec",T1)

printf("\nrev. time for case-2\n")

printf("T2=%.3f sec",T2)

printf("\nrev. time for case-3\n")

printf("T3=%.3f sec",T3)
