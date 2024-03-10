function [new_img, new_hist] = my_histeq(img)
    % Convert the image to double for calculations
    img = double(img);

    % Get the histogram of the original image
    [orig_hist, ~] = imhist(uint8(img));

    % Calculate the cumulative distribution function (cdf)
    cdf = cumsum(orig_hist) / numel(img);

    % Create a transformation T(rk) = (L-1)*cdf(rk)
    T = floor(255 * cdf);

    % Map the intensities of the original image using the transformation T
    new_img = T(img+1);

    % Get the histogram of the equalized image
    [new_hist, ~] = imhist(uint8(new_img));
end

%% Prob2

function [roberts_edge, prewitt_edge, sobel_edge] = my_edge_detection(image_path)
    % Read the image
    img = imread(image_path);
    
    % Convert to grayscale if it is not already
    if size(img, 3) == 3
        img = rgb2gray(img);
    end
    
    % Roberts operator
    roberts_filter = [1 0; 0 -1];
    roberts_edge = imfilter(double(img), roberts_filter, 'conv');
    
    % Prewitt operator
    prewitt_filter_x = [-1 0 1; -1 0 1; -1 0 1];
    prewitt_filter_y = [-1 -1 -1; 0 0 0; 1 1 1];
    prewitt_edge_x = imfilter(double(img), prewitt_filter_x, 'conv');
    prewitt_edge_y = imfilter(double(img), prewitt_filter_y, 'conv');
    prewitt_edge = sqrt(prewitt_edge_x.^2 + prewitt_edge_y.^2);
    
    % Sobel operator
    sobel_filter_x = [-1 0 1; -2 0 2; -1 0 1];
    sobel_filter_y = [-1 -2 -1; 0 0 0; 1 2 1];
    sobel_edge_x = imfilter(double(img), sobel_filter_x, 'conv');
    sobel_edge_y = imfilter(double(img), sobel_filter_y, 'conv');
    sobel_edge = sqrt(sobel_edge_x.^2 + sobel_edge_y.^2);
end


