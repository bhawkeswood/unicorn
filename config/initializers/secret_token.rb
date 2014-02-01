# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Unicorn::Application.config.secret_key_base = '2bb041361b82f5333d1457e4aa8106c4d2cff5bb728efaf77d35b0ba74395be6c60b07045ab57f2a96f0bb6160870c24cb13ff7013bc8cc4e8485d459317b87d'
