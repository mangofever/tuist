# frozen_string_literal: true

class AnalyticsController < APIController
  def analytics
    CommandEventCreateService.call(
      project_slug: params[:project_id],
      user: current_user,
      name: params[:name],
      subcommand: params[:subcommand],
      command_arguments: params[:command_arguments],
      duration: params[:duration],
      client_id: params[:client_id],
      tuist_version: params[:tuist_version],
      swift_version: params[:swift_version],
      macos_version: params[:macos_version]
    )
  end
end
