define(function(require, exports, module) {

var $ = require('jquery');
var rich = require('rich');
var backbone = require('backbone');
var marionette = require('marionette');
var app = require('app/app');
var RectangleView = require('app/sample/views/rectangle-view').RectangleView;
var Rectangle = require('app/sample/models/rectangle').Rectangle;

var AppController = marionette.Controller.extend({

    initialize: function(options){
        this.app = app;

        var rectangle = new RectangleView({
            model: new Rectangle()
        });

        var container = new rich.View({
            constraints:[
                '|-20-[rectangle]-20-|',
                'V:|-20-[rectangle]-20-|'
            ]
        });

        container.rectangle = rectangle;
        container.addSubview(rectangle);
        this.app.body.addSubview(container);
    },

    index: function(){

    },
});

exports.AppController = AppController;
});
