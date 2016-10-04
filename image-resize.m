% img_array = imread('spidar.jpg');
% for y =1:720
%     for x = 1:1920
%         if x > 1280
%             img_array(:,x,1)= 0;
%             img_array(:,x,2)= 0;
%             img_array(:,x,3)= 0;
%             
%            end 
%        end  
%       
% end 
% byteStream = getByteStreamFromArray(img_array);
% 
% % save to binary file 
% fileID = fopen('spidar.bin','w');
% fwrite(fileID,img_array);
% fclose(fileID);

%read binary file
fileID2 = fopen('spidar.bin','r');
read2Array = fread(fileID2);
%turn binary arry to 720x1280x3 array 
tempArray = reshape(read2Array,[720,1920,3]);
ImageArray=uint8(tempArray);
