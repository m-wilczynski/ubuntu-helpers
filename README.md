# ubuntu-helpers
Helper scripts for dev environment on Ubuntu 14.04 and 16.04 LTS.

#### Usage:

Simple installation (example for *install-dotnet.sh*):
```
sudo sh install-dotnet.sh
```

Include VS Code IDE in installation (example for *install-dotnet.sh*):
```
sudo sh install-dotnet.sh -c
```

## Currently available:
 
<br/>
![.NET Core](https://s21.postimg.org/v24w7y087/dotnet.png ".NET Core")
### install-dotnet.sh
*Installs .NET Core 1.0.0 and helpers: Yeoman scaffolder and Visual Studio Code editor*

- .NET Core (1.0.0)
- git (latest)
- node.js (latest from 6.x)
- npm (latest)
- yeoman (latest)
- VS Code (latest) - ***optional*** (use ` -c` flag after script filename)

<br/>
![Ruby On Rails](https://s21.postimg.org/oppqy3x5z/rails.png "Ruby On Rails")
### install-rails.sh
*Installs Ruby 2.3.0, Ruby on Rails 4.2.6, RVM and helpers: ruby debugging (ruby-debug-ide), basic unit testing (test-unit) and Visual Studio Code editor*

- ruby (2.3.0)
- rvm (latest)
- rails (latest)
- bundler (latest)
- ruby-debug-ide (latest)
- git (latest)
- node.js (latest from 6.x)
- npm (latest)
- VS Code (latest) - ***optional*** (use ` -c` flag after script filename)
