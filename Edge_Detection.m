%%%  "Image Edge Detection using Sobel Operator" by Arnaja Mitra
 
% Read the input image:
input_image = imread('Dream.png');
  
% Display the input image:
input_image = uint8(input_image);
figure 
imshow(input_image); 
title('Input Image');
  
% Converting RGB image to the grayscale image, if required:
input_image = rgb2gray(input_image);
  
% Convert the image to double:
input_image = double(input_image);
  
% Pre-allocate the filtered_image matrix with zeros:
filtered_image = zeros(size(input_image));
  
% Sobel Operator Mask:
Mx = [-1 0 1; -2 0 2; -1 0 1];
My = [-1 -2 -1; 0 0 0; 1 2 1];
  
% Edge Detection Process

% When i=1 and j=1, the filtered_image pixel position will be 
% filtered_image(2, 2).
% The mask is of 3x3, so we need to traverse to 
% filtered_image(size(input_image, 1) - 2, size(input_image, 2) - 2)
% So, we are not considering the borders.
for i = 1:size(input_image, 1) - 2
    for j = 1:size(input_image, 2) - 2
  
        % Gradient approximations:
        Sx = sum(sum(Mx.*input_image(i:i+2, j:j+2)));
        Sy = sum(sum(My.*input_image(i:i+2, j:j+2)));
                 
        % Calculating the magnitude of vector:
        filtered_image(i+1, j+1) = sqrt(Sx.^2 + Sy.^2);
         
    end
end
  
% Display the Filtered Image:
filtered_image = uint8(filtered_image);
figure
imshow(filtered_image); 
title('Filtered Image');
  
% Define a threshold value:
thresholdvalue = 100; % varies between [0 255]
output_image = max(filtered_image, thresholdvalue);
output_image(output_image == round(thresholdvalue)) = 0;
  
% Display the Output Image:
output_image = imbinarize(output_image);
figure
imshow(output_image); 
title('Edge Detected Image');
