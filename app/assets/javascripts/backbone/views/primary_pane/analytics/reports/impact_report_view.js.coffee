TuringEmailApp.Views.PrimaryPane ||= {}
TuringEmailApp.Views.PrimaryPane.Analytics ||= {}
TuringEmailApp.Views.PrimaryPane.Analytics.Reports ||= {}

class TuringEmailApp.Views.PrimaryPane.Analytics.Reports.ImpactReportView extends  TuringEmailApp.Views.PrimaryPane.Analytics.Reports.ReportView
  template: JST["backbone/templates/primary_pane/analytics/reports/impact_report"]

  className: "report-view"

  render: ->
    @$el.html(@template(@model.toJSON()))

    @
