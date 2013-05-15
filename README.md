runify
======

.net continuous unit testing

dependencies
============

1. Powershell >= 2.0
2. Git

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
  <assembly path="OnTheDot.Cataloguing.UnitTests\bin\debug\OnTheDot.Cataloguing.UnitTests.dll"></assembly>
  <assembly path="OnTheDot.Cataloguing.IntegrationTests\bin\debug\OnTheDot.Cataloguing.IntegrationTests.dll"></assembly>
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

