for seed in 12345 23451 34512 45123 51234; do
    python train_SAC.py env=quadruped_walk seed=$seed agent.params.actor_lr=0.0001 agent.params.critic_lr=0.0001 num_train_steps=1000000 num_unsup_steps=9000
done
