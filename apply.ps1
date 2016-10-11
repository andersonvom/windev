$basemodulepath = puppet config print modulepath
puppet apply --debug --modulepath ".\modules;$basemodulepath" site.pp
