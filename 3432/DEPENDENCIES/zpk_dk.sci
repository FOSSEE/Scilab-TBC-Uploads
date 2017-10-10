//------------------------------------------------------------------
//------------------------------------------------------------------
//A function written by Deepti Khimani.
//Usage:-
//p=zpk_dk(sl)
//[p, z]=zpk_dk(sl)
//[p, z, k]=zpk_dk(sl)
//p:- Poles of the system
//z:- zeros of the system
//k:- DC gain of the system
//------------------------------------------------------------------
//------------------------------------------------------------------

function[pl,zr,k]=zpk_dk(sysmodel)
    [lhs,rhs]=argn(0)

    if rhs == 0 then
     disp(["p=zpk_dk(sl)";"[p, z]=zpk_dk(sl)";"[p, z, k]=zpk_dk(sl)"]);
     disp(["p:- Poles of the system";"z:- zeros of the system"]);
     disp("k:- DC gain of the system");
     return;
    end
    
    if typeof(sysmodel)=="rational" then
        sys=tf2ss(sysmodel);
        pl=spec(sys.A);
        zr=trzeros(sys);
        temp1=poly(zr,'s','roots')/poly(pl,'s','roots');
        temp2=sysmodel/temp1;
        temp3=tf2ss(temp2);
        k=temp3.D;
    elseif typeof(sysmodel)=="state-space" then
        pl=spec(sysmodel.A);
        zr=trzeros(sysmodel);
        g=ss2tf(sysmodel);
        temp1=poly(zr,'s','roots')/poly(pl,'s','roots');
        temp2=g/temp1;
        temp3=tf2ss(temp2);
        k=temp3.D
    else
        error("Wrong type of input argument.")
    end 
endfunction
