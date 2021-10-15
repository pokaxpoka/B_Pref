for seed in 67890 78906 89067 90678 6789; do
    python train_SAC.py env=quadruped_walk seed=$seed agent.params.actor_lr=0.0001 agent.params.critic_lr=0.0001 num_train_steps=1000000 num_unsup_steps=9000
done
