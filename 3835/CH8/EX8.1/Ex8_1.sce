clear
//
//given
f=50
p=4
//case a
s=(120*f)/p //synchronous speed
printf("\n synchronous speed= %0.0f  rpm",s)
//case b
slip=0.03
r=s-s*slip //rotor speed
printf("\n rotor speed= %0.0f  rpm",r)
//case c
r=900 //given speed of rotor
slip=(s-r)/s //per unit slip
rf=slip*f
printf("\n rotor frequency= %0.0f  Hz",rf)
