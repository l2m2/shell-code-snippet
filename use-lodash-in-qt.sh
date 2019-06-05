# https://medium.com/@benlaud/using-lodash-in-qml-e7c36b0df0e1
npm -g install lodash-cli@3.10.1
lodash exports=none iife="var _ = (function(){%output%; return runInContext(); })(this)" -o lodash.js
sed -i.old  "1s/^/.pragma library;/" lodash.js

# OR

lodash include=assign,runInContext,chunk iife="var _ = (function(){%output%; return runInContext(); })(this)" -o lodash.js
sed -i.old  "1s/^/.pragma library;/" lodash.js

# 若在Qt Script中使用，去掉exports=none.