% Create chess board
sz = 50; % sz of each square
ch = double(checkerboard(sz));
ch = double(ch > 0);
imshow(ch);

% Marking the spot with an x
piece = createPiece('bishop' ,sz);

% Keeping track of the past positions and number of travels
board = zeros(8, 8);

numMoves = 10000;

% Get initial position
x_0 = randi(8);
y_0 = randi(8);
board(x_0,y_0) = 1;
copy_ch = ch;
copy_ch((x_0 - 1)*sz+1:x_0*sz, (y_0 - 1)*sz+1:y_0*sz) = piece;
imshow(copy_ch);
pause_for = 0.001;
pause(pause_for);
for i = 1:numMoves
    
    % Create a copy of the board
    copy_ch = ch;
    
    % Get new position
    [x_new, y_new] = moveTo(x_0, y_0);
    % Counting how many times we've been there
    board(x_new, y_new) = board(x_new, y_new) + 1;
    
    x_0 = x_new;
    y_0 = y_new;
    copy_ch((x_0 - 1)*sz+1:x_0*sz, (y_0 - 1)*sz+1:y_0*sz) = piece;
    imshow(copy_ch);
    pause(pause_for);
    
end

% Setting up the figure for the 2D move plot
figure;
stem3(board);
title('Moves 3D Stem');
