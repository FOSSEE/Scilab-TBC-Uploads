clear ;
clc;
// Example 16.2
printf('Example 16.2\n\n');
//Page no. 491
// Solution


//(a)
// Given
// get essential data from steam table 
Ta = [310,315] ;//Temperature data from steam table- [K]
pa = [6.230,8.143] ;// Pressure data from steam table - [kPa]
pfa = interpln([Ta;pa],312) ;// Pressure at 312 K - [kPa] 
printf('(a) Saturation pressure of water at 312 K is %.1f kPa.\n',pfa );

//(b)

//For initial condition get specific volume
  // Double interpolation
     //first interpolation
      // at 600 degree F ,data from steam table
       pb_600 = [90,95] ;// Pressure data - [psia]
       vb_600= [6.916,6.547] ;// specifc volume data - [(cubic feet/lb)]
       v_600 = interpln([pb_600;vb_600],92);// specifc volume at 92 psia and 600 degree F  - [(cubic feet/lb)]
       
      //at 700 degree F,data from steam table
       pb_700 = [90,95]  ;// Pressure data - [psia]
       vb_700 = [7.599,7.195];// specifc volume data - [(cubic feet/lb)]
       v_700 = interpln([pb_700;vb_700],92) ;// specifc volume at 92 psia and 700 degree F - [(cubic feet/lb)]
       
     // second interpolation 92 psia,data from steam table
       Tb_92 = [600,700];// Temperature data from steam table - [degree F]
       vb_92 = [v_600,v_700];// specifc volume data - [(cubic feet/lb)]
       v_640_92 = interpln([ Tb_92;vb_92],640);// specifc volume at 92 psia and 640 degree F - [(cubic feet/lb)]
       
        
        
//For final condition get specific volume
  // Double interpolation
     //first interpolation
      // at 450 degree F,data from steam table
           pc_450 = [50,55]  ;// Pressure data - [psia]
           vc_450 = [10.69,9.703];// specifc volume data - [(cubic feet/lb)]
           v_450 = interpln([pc_450;vc_450],52);// specifc volume at 52 psia and 450 degree F  - [(cubic feet/lb)]
           
      //at 500 degree F,data from steam table
       pc_500 = [50,55] ; // Pressure data - [psia]
       vc_500 = [11.30,10.26];// specifc volume data - [(cubic feet/lb)]
       v_500 = interpln([pc_500;vc_500],52);// specifc volume at 52 psia and 500 degree F  - [(cubic feet/lb)]
       
     // second interpolation 52 psia,data from steam table
       Tc_52 = [450,500];// Temperature data from steam table - [degree F]
       vc_52 = [v_450,v_500];// specifc volume data - [(cubic feet/lb)]
       v_480_52 = interpln([ Tc_52;vc_52],480) ;// specifc volume at 52 psia and 480 degree F - [(cubic feet/lb)] 
       
del_v = v_480_52 - v_640_92 ;// Change in specific volume  - [(cubic feet/lb)] 
printf(' (b) Change in specific volume between initial and final condition is %.2f (cubic feet/lb).\n',del_v );