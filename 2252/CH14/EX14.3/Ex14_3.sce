
Rp=.8
Xp=3.2
Rs=.009
Xs=.03
Rs_dash=(2200/220)^2*Rs
mprintf("Equivalent resistance referred to primary=%f ohm\n",Rp+Rs_dash)
Xs_dash=(2200/220)^2*Xs
mprintf("Equivalent reactance referred to primary=%f ohm\n",Xp+Xs_dash)
Rp_dash=(220/2200)^2*Rp
mprintf("Equivalent resistance referred to secondary=%f ohm\n",Rp_dash+Rs)
Xp_dash=(220/2200)^2*Xp
mprintf("Equivalent reactance referred to secondary=%f ohm",Xp_dash+Xs)
