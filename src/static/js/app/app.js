define(function(require, exports, module) {
    var marionette = require('marionette');
    var app = new marionette.Application();
    var rich = require('rich');

    app.addRichContexts({
        body:{
            el: 'body'
        }
    });

    app.addInitializer(function() {
        Backbone.history.start({
            pushState: false
        });
    });


    return app;
});
