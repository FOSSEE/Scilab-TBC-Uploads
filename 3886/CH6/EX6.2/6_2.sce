//Simple machine
//assume law of machine P=m*W+C
//From first and second conditions we obtain 2 equations
//150=2400*m+C
//180=3000*m+C
//upon solving them
//P=0.05*W+30
//When force of 200 N is applied
W=(200-30)/(0.05)  //N
//Ideal effort
Pi=3400/30  //N
//Effort wasted in overcoming the friction
Ew=200-113.33  //N
//Mechanical advantage
MA=3400/200
//Efficiency
Eff=(17*100)/(30)  //percent
printf("\n Law of machining is P=0.05*W+30\nW=%.2f N\nEffort wasted in overcoming the friction=%.2f N\nMechanical advantage=%.2f \nEfficiency=%.2f percent",W,Ew,MA,Eff)
