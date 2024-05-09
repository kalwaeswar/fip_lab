a=imread("grey2image.jpg");
b=rgb2gray(a);
b=double(b);
[m,n]=size(b);
b7=[];
b6=[];
b5=[];
b4=[];
b3=[];
b2=[];
b1=[];
b0=[];

for i=1:m
    for j=1:n
        b7(i,j)=bitand(b(i,j),128);
        b6(i,j)=bitand(b(i,j),64);
        b5(i,j)=bitand(b(i,j),32);
        b4(i,j)=bitand(b(i,j),16);
        b3(i,j)=bitand(b(i,j),8);
        b2(i,j)=bitand(b(i,j),4);
        b1(i,j)=bitand(b(i,j),2);
        b0(i,j)=bitand(b(i,j),1);
    end
end
subplot(3,3,1),imshow(a),title("original image")
subplot(3,3,2),imshow(b7),title("bitplane 7")
subplot(3,3,3),imshow(b6),title("bitplane 6")
subplot(3,3,4),imshow(b5),title("bitplane 5")
subplot(3,3,5),imshow(b4),title("bitplane 4")
subplot(3,3,6),imshow(b3),title("bitplane 3")
subplot(3,3,7),imshow(b2),title("bitplane 2")
subplot(3,3,8),imshow(b1),title("bitplane 1")
subplot(3,3,9),imshow(b0),title("bitplane 0")


