%%%%%%%%%%%%%%%In this program testing is performed on datasets of Fingerprint
%%%%%%%%%%%%%%%six image is taken for testing purpose
%%%%%feture extractio is taken by storing the standard deviation of
%%%%%selected block (after calculting DCT of image)as a feature vector
%%%%%%Single image is converted into vector of 1*39 only%%%%%%%
clear all;
close all;      
clc;
tic;

tr_im=50*2;
no_im=(6*50);
i=1;
for f=151:200 
for j=1:2
%taking location of stored image, user can store it according to location
str1=strcat('E:\Database\Finger print\',num2str(f),'\',num2str(j+7),'.bmp');
a=imread(str1);
[m,n,z]=size(a);

%b=rgb2gray(a);
bc=imresize(a,[64,64]);
if(z==3)
b=rgb2gray(bc);
else
    b=bc;
end
d{i}=dct2(b);%%%%%%%%%%calculating DCT
%%%%%%%%%%% Block by block feature extraction%%%%%%%%%%%%%%%%%%%%

M1{i}=d{i}(1:4,1:4);
M2{i}=d{i}(1:8,1:8);
M3{i}=d{i}(17:32,17:32);
M4{i}=d{i}(17:20,17:20);
M5{i}=d{i}(17:32,1:16);
M6{i}=d{i}(1:4,9:12);
M7{i}=d{i}(9:12,9:12);
M8{i}=d{i}(17:20,9:12);
M9{i}=d{i}(9:12,17:20);
M10{i}=d{i}(25:28,9:12);
M11{i}=d{i}(17:20,17:20);
M12{i}=d{i}(25:28,17:20);
M13{i}=d{i}(1:4,25:28);
M14{i}=d{i}(17:20,25:28);
M15{i}=d{i}(9:12,25:28);
M16{i}=d{i}(25:28,25:28);
M17{i}=d{i}(1:4,33:36);
M18{i}=d{i}(1:4,41:44);
M19{i}=d{i}(9:12,33:36);
M20{i}=d{i}(9:12,40:44);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55555
M21{i}=d{i}(21:24,53:56);
M22{i}=d{i}(13:16,45:48);
M23{i}=d{i}(53:56,21:24);
M24{i}=d{i}(45:48,13:16);
M25{i}=d{i}(1:8,61:64);% taking lower freq coefficient
M26{i}=d{i}(61:64,1:8);
M27{i}=d{i}(57:64,25:32);
M28{i}=d{i}(25:32,57:64);
M29{i}=d{i}(49:52,53:56);
M30{i}=d{i}(45:48,53:56);
M31{i}=d{i}(33:48,49:64);
M32{i}=d{i}(49:64,33:48);
M33{i}=d{i}(49:52,49:52);
M34{i}=d{i}(25:32,25:32);
M35{i}=d{i}(45:48,45:48);
M36{i}=d{i}(37:40,37:40);
M37{i}=d{i}(33:40,33:40);
M38{i}=d{i}(52:56,52:56);
M39{i}=d{i}(57:64,57:64);
%%%%%%%%%%%%%%%%calculating standard deviation of blocks%%%%%%%%%%%%%%%
s1 =std(M1{i});Fe(i,1)=0;%mean(s1);
s2 =std(M2{i});Fe(i,2)=0;%mean(s2);
s3 =std(M3{i});Fe(i,3)=0;%mean(s3);
s4 =std(M4{i});Fe(i,4)=mean(s4);
s5 =std(M5{i});Fe(i,5)=mean(s5);
s6 =std(M6{i});Fe(i,6)=mean(s6);
s7 =std(M7{i});Fe(i,7)=mean(s7);
s8 =std(M8{i});Fe(i,8)=mean(s8);
s9 =std(M9{i});Fe(i,9)=mean(s9);
s10 =std(M10{i});Fe(i,10)=mean(s10);
s11 =std(M11{i});Fe(i,11)=mean(s11);
s12 =std(M12{i});Fe(i,12)=mean(s12);
s13 =std(M13{i});Fe(i,13)=mean(s13);
s14 =std(M14{i});Fe(i,14)=mean(s14);
s15 =std(M15{i});Fe(i,15)=mean(s15);
s16 =std(M16{i});Fe(i,16)=mean(s16);
%s24 =std(M24{i});Fe(1,17)=mean(s24);% changed to 17 instead of 24
s17 =std(M17{i});Fe(i,17)=mean(s17);
s18 =std(M18{i});Fe(i,18)=mean(s18);
s19 =std(M19{i});Fe(i,19)=mean(s19);
s20 =std(M20{i});Fe(i,20)=mean(s20);
s21 =std(M21{i});Fe(i,21)=mean(s21);
s22 =std(M22{i});Fe(i,22)=mean(s22);
s23 =std(M23{i});Fe(i,23)=mean(s23);
s24 =std(M24{i});Fe(i,24)=mean(s24);
s25 =std(M25{i});Fe(i,25)=mean(s25);%changed to 1 from 25
s26=std(M26{i});Fe(i,26)=mean(s26);% taken other than lower freq coefficient............................
s27=std(M27{i});Fe(i,27)=mean(s27);
s28=std(M28{i});Fe(i,28)=mean(s28);
s29=std(M29{i});Fe(i,29)=mean(s29);
s30=std(M30{i});Fe(i,30)=mean(s30);
s31=std(M31{i});Fe(i,31)=mean(s31);
s32=std(M32{i});Fe(i,32)=mean(s32);
s33=std(M33{i});Fe(i,33)=mean(s33);
s34=std(M34{i});Fe(i,34)=mean(s34);
s35=std(M35{i});Fe(i,35)=mean(s35);
s36=std(M36{i});Fe(i,36)=mean(s36);
s37=std(M37{i});Fe(i,37)=mean(s37);
s38=std(M38{i});Fe(i,38)=mean(s38);
s39=std(M39{i});Fe(i,39)=mean(s39);
i=i+1;
end
end
%tic
% opening feature vector file of training data sets%%%%%%%%%%%%%%%
fi = fopen('E:\Program Files (x86)\Microsoft Visual Studio 10.0\Project\Photo\Photo\Database\features_fingure_new.txt');
for i=1:39
    for j=1:no_im %  101:400
Fea(j,i)= fscanf(fi,'%f',1);
    end
end
fclose(fi); % Now close the file.
%%%%%%%%%%%%%%%%storing the file of testing data sets
fid = fopen('E:\Program Files (x86)\Microsoft Visual Studio 10.0\Project\Photo\Photo\Database\features_fingure_test_im_new.txt','w');
fprintf(fid,'%6.4f \n',Fe);
fclose(fid);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%555555555555555555
%%%%%%%%%%%%%%different distances have been used for calculating distances 
for i=1:no_im
    
    for k=1:tr_im
        sum=0; 
        for j=21:39 
            score=abs(Fe(k,j)-Fea(i,j)); %Manhatten
            %score=(sqrt(Fe(k,j))-sqrt(Fea(i,j))^2);%heillenger
             %score=((abs(Fe(k,j)-Fea(i,j)))/(abs(Fe(k,j))+abs(Fea(i,j))));    %canbera
             %score=((Fe(k,j)-Fea(i,j))^2);%%euclidean
         sum=sum+score;
        end
        
        %sum=sum/2;      %heinder
        %dis(i,k)=sqrt(sum);%%euclidean and heinder
        dis(i,k)=sum;%Manhatten and %canbera 
    %dis(i,k)=sqrt(sum); 
    end
end

for k=1:tr_im
    min(k)=dis(1,k);
for i=1:no_im
        
        if (dis(i,k)<min(k))
        min(k)=dis(i,k);
        win_img(k)=i;
        %no_win=k;
        end
end
    %win_f(k)=win_img(i);
    %min_f(k)=min(i);
end

toc;