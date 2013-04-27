#!/bin/sh
echo "*** Running app specs"
bundle exec rake spec
result=$?

cd gems/services
echo "*** Running services gem specs"
bundle install > /dev/null
bundle exec rspec spec
result+=$?
cd ../..

if [ $result -eq 0 ]; then
  echo "SUCCESS"
else
  echo "FAILURE"
fi

exit $result
