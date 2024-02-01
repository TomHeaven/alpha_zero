# pkill python

CHECKBOARD_SIZE=15
#nohup python3 -m training_gomoku --board_size=${CHECKBOARD_SIZE --num_stack=4 --num_res_blocks=9 --num_filters=32 --num_fc_units=64 --num_simulations=200 --ckpt_dir=./checkpoints/gomoku/${CHECKBOARD_SIZE}x${CHECKBOARD_SIZE} --logs_dir=./logs/gomoku/${CHECKBOARD_SIZE}x${CHECKBOARD_SIZE} --save_sgf_dir=./selfplay_games/gomoku/${CHECKBOARD_SIZE}x${CHECKBOARD_SIZE} > train_gomoku_${CHECKBOARD_SIZE}x${CHECKBOARD_SIZE}.log &

CUDA_VISIBLE_DEVCIES='1,0' nohup python3 -m training_gomoku --num_actors=64 --board_size=${CHECKBOARD_SIZE} --num_stack=8 --num_res_blocks=10 --num_filters=64 --num_fc_units=96 --num_simulations=200 --ckpt_dir=./checkpoints/gomoku/${CHECKBOARD_SIZE}x${CHECKBOARD_SIZE} --logs_dir=./logs/gomoku/${CHECKBOARD_SIZE}x${CHECKBOARD_SIZE} --save_sgf_dir=./selfplay_games/gomoku/${CHECKBOARD_SIZE}x${CHECKBOARD_SIZE} > train_gomoku_${CHECKBOARD_SIZE}x${CHECKBOARD_SIZE}.log &