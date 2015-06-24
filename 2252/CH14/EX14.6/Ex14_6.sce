
//Is*Rs=.02*Vs,Is*Xs=.05*Vs
//calculating regulation at .8 pf lagging
VR=(.02*.8+.05*.6)*100
mprintf("Voltage regulation at .8 pf lagging=%f percent\n",VR)
//calculating regulation at .8 pf leading
VR=(.02*.8-.05*.6)*100
mprintf("Voltage regulation at 0.8 pf leading=%f percent",VR)
