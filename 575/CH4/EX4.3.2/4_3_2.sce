clc
pathname=get_absolute_file_path('4_3_2.sce')
filename=pathname+filesep()+'432.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
multiply=FinalBasis/basis
Feed=100*multiply
TopStream=50*multiply
BottomStream1=12.5*multiply
BottomStream2=37.5*multiply
printf(" \n Final Basis=%d lb-moles /h",Feed)
printf(" \n Final Top Stream Feed=%d lb-moles /h",TopStream)
printf(" \n Final Bottom Stream Feed 1 =%d lb-moles A/h",BottomStream1)
printf(" \n Final Bottom Stream Feed 2 =%d lb-moles B/h",BottomStream2)