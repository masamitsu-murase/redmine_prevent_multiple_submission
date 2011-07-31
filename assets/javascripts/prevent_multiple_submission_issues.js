
(function(){
    var init_func = function(){
        // for issues and issue_moves
        var forms = $$("form#issue-form", "form#move_form");
        var submit_buttons = $$("form#issue-form input[type='submit']", "form#move_form input[type='submit']");

        var change_button_state = function(enable){
            submit_buttons.each(function(button){
                button.disabled = !enable;
            });
        };

        var disable_all = function(){
            change_button_state(false);
        };

        var enable_all = function(){
            change_button_state(true);
        };

        forms.each(function(form){
            form.observe("submit", function(event){
                setTimeout(disable_all, 0);  // To send submit button's parameter to the server.
                return true;
            });
        });
        enable_all();  // This is not so good...
//        Event.observe(window, "unload", enable_all);  // This sometimes causes multiple submission...
    };

    Event.observe(window, "load", init_func);
})();
