# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_media_session',
  :secret      => 'bfd0a1b62eb583db1315b72f54fc75d81316ed9d4c26009d5019fefb7d36ce00ff6272c0fa1c603bc65e10f0cc60c726100c6004a53c402724abe3adb6260f89'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
