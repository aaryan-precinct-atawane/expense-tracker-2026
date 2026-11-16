
#!/usr/bin/env bash
set -o errexit

echo "Checking Render master key..."
echo "Master key length: ${#RAILS_MASTER_KEY}"
printf '%s' "$RAILS_MASTER_KEY" | sha256sum

bundle install
bin/rails assets:precompile
bin/rails db:migrate
