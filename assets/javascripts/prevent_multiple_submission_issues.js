
(function(){
    var init_func = function(){
        // for issues and issue_moves
        var form_css_list = [ "form#issue-form", "form#move_form",
                              "body.controller-projects.action-new div#content form",
                              "body.controller-projects.action-create div#content form",
                              "body.controller-projects.action-copy div#content form",
                              "body.controller-projects.action-settings div#tab-content-info form",
                              "body.controller-projects.action-settings div#tab-content-modules form" ];
        var forms = $$.apply(window, form_css_list);
        var submit_buttons = $$.apply(window,
                                      form_css_list.map(function(i){ return i + " input[type='submit']"; }));

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
