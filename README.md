ey-pyapns
=========

Description
=========

[pyapns](https://github.com/samuraisam/pyapns) is an universal Apple Push Notification Service (APNS) provider.

This is simple Chef recipe that can be used to install it on Engine Yard environment.

Usage:
=====================================

1. Grab the recipe and copy it as /path/to/your/ey-cloud-recipes/cookbooks/ey-pyapns

2. Add ```require_recipe "ey-pyapns"``` to main/recipes/default.rb

3. Set application name in recipes/default.rb

4. Upload the recipe

        $ ey recipes upload -e <environment name>

5. Apply the recipe

        $ ey recipes apply -e <environment name>

6. (optional) Commit and push the recipe to your fork of [engineyard/ey-cloud-recipes](https://github.com/engineyard/ey-cloud-recipes)

NOTES
=====================================

Soon to come...
