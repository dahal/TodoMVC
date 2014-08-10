// View Controller

// VIEW
function View(){
  this.taskValue = function(){
    return $('#todo_task').val()
  }
  this.addTask = function(task) {
    $('ul').append('<li><i class="fa fa-circle-thin"></i>  '+task+'</li>')
  }
}

// CONTROLLER
var Controller = {
  view: new View(),
  bindListeners: function(){
    $('form').on('submit', function(e){
      e.preventDefault()
      Controller.addTask()
    })
  },
  addTask: function() {
    $.ajax({
      url: '/todos',
      type: 'POST',
      data: { todo: { task: this.view.taskValue()} }
    }).done(function(task) {
      this.view.addTask(task);
    }.bind(this))
  }
}

$(document).ready(function(){
  Controller.bindListeners()
})