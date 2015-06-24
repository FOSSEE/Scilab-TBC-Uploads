//                 Csae study: Chapter-8, Page No:253
//                  2.Processing of a customer list


CUSTOMERS=10;
printf("    Input names and telephone numbers\n");
printf(" [Names must have First,Second and Last_name]\n");
for i=1:CUSTOMERS
    //Read data
    [first_name(i),second_name(i),surname(i),telephone(i)]=scanf("%s %s %s %s");
    //Converting full name to surname with initials
    l1=length(surname(i));           //Compute length of surname at i
    name(i)=strncpy(surname(i),l1) ;
    name(i)=strcat([name(i),',']);
    dummy(1)=part(first_name(i,1),1);
    name(i)=strcat([name(i),dummy]);
    name(i)=strcat([name(i),'.']);
    dummy(1)=part(second_name(i,1),1);
    name(i)=strcat([name(i),dummy]);
end
//Alphabetical odering of surnames
for i=1:CUSTOMERS                 //Outer loop begins
    for j=2:CUSTOMERS-i+1         //Inner loop begins
        k=strcmp(name(j-1),name(j));
        if(k>0) then 
            
            //Swaping names
            l1=length(name(j-1));
            l2=length(name(j));
            dummy=strncpy(name(j-1),l1);
            name(j-1)=strncpy(name(j),l2);
            l3=length(dummy);
            name(j)=strncpy(dummy,l3);
            
            //Swapping telephone numbers
            l3=length(telephone(j-1));
            l4=length(telephone(j));
            dummy=strncpy(telephone(j-1),l3);
            telephone(j-1)=strncpy(telephone(j),l4);
            telephone(j)=strncpy(dummy,l3);
        end
    end  //Inner loop ends
end  //Outer loop ends
//Printing alphabetical list
disp("CUSTOMER LIST IN ALPHABETICAL ORDER");
for i=1:CUSTOMERS
    printf("%-20s\t %-10s\n",name(i),telephone(i));
end