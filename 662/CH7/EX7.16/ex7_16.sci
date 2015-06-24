    //Programming Example 7.16
    //The towers of hanoi
function[]= main()
    printf("Welcome to theTOWERS OF HANOI\n\n");
    printf("How many disks? ");
    n= scanf("%d");
    printf("\n");
    transfer(n,'L', 'R','C');
endfunction

function[] = transfer(n,from,to,temp)
    //transfer n disks from one pole to another
    //n=number of disks
    //from=origin
    //to=destination
    //temp=temporary storage
    if(n >0) then
        //move n-1 disks frim origin to temporary
        transfer(n-1, from, temp, to);
        //move nth disk from origin to temporary
        printf("Move disk %d from %c to %c \n",n, from, to);
        //move n-1 disks from temporary to destination
        transfer(n-1, temp,to, from);
    end
    return; 
endfunction
//calling main() to start execution
main();
