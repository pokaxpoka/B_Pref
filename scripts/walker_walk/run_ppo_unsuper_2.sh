for seed in 67890 78906 89067 90678 6789; do
    python train_PPO_Unsuper.py --env walker_walk --seed $seed --lr 0.00005 --batch-size 64 --n-envs 32 --ent-coef 0.0 --n-steps 500 --total-timesteps 4000000 --num-layer 3 --hidden-dim 256 --clip-init 0.4 --gae-lambda 0.92 --unsuper-step 32000 --unsuper-n-epochs 50
done
