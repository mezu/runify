runify
======

.net continuous unit testing, runify automatically executes tests in your assemblies. runify only monitors for changes to files that contain "Tests" in their names

dependencies
============

1. Powershell >= 2.0
2. nunit
3. Git

installation
============

```
cd your_current_repository
```

add the submodule

```
git submodule add git@github.com:jeanres/runify.git
```

configuration
==============

edit the configuration file runfify\runify.config

```
<tests>
  <assembly path="MyProject.UnitTests\bin\debug\MyProject..UnitTests.dll"></assembly>
  <assembly path="MyProject.IntegrationTests\bin\debug\MyProject.IntegrationTests.dll"></assembly>
</tests>
```

point the aseembly path to your unit and integration tests assemly paths

running
=======

cd to the root of your repository run .\runify\runify.ps1

Contributing
============

Fork it
Create your feature branch (git checkout -b my-new-feature)
Commit your changes (git commit -am 'Add some feature')
Push to the branch (git push origin my-new-feature)


Create new Pull Request

