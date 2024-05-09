a=imread("catimage.jpg");
b=rgb2gray(a);
b=imresize(b,[256,256]);
c=double(b);
m=double(255);
[row,col]=size(c);
p=double(round(m/1.30));
q=double(round(2*m/2));

for x=1:row            
    for y=1:col        
        if((c(x,y)>p) && (c(x,y)<q))
            d(x,y)=m;
        else
            d(x,y)=0;
        end
    end
end
subplot(131), imshow(a), title('Original image')  
subplot(132), imshow(uint8(c)), title('Graylevel slicing with background')
subplot(133), imshow(uint8(d)), title('Graylevel slicing without background')