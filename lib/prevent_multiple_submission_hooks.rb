
module PreventMultipleSubmission
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context = {})
      params = context[:controller].params

      case(params[:controller])
      when "issues"
        case(params[:action])
        when "new", "show"
          return javascript_include_tag("prevent_multiple_submission_issues",
                                        :plugin => "redmine_prevent_multiple_submission")
        end

      when "issue_moves"
        case(params[:action])
        when "new"
          return javascript_include_tag("prevent_multiple_submission_issues",
                                        :plugin => "redmine_prevent_multiple_submission")
        end
      end
      return ""
    end
  end
end
