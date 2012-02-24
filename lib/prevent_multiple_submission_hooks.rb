
module PreventMultipleSubmission
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context = {})
      pattern = {
        "issues" => [ "new", "create", "show", "update" ],
        "issue_moves" => [ "new" ],
        "projects" => [ "new", "create", "copy", "settings" ]
      }

      params = context[:controller].params
      if (pattern.key?(params[:controller]) && pattern[params[:controller]].include?(params[:action]))
        return javascript_include_tag("prevent_multiple_submission_issues",
                                      :plugin => "redmine_prevent_multiple_submission")
      end

      return ""
    end
  end
end
