module Agents
  class RteAgent < Agent
    include FormConfigurable
    can_dry_run!
    no_bulk_receive!
    default_schedule 'every_1h'

    description <<-MD
      The Rte Agent interacts with the Rte api and can create events / tasks if wanted / needed.

      The `type` can be like checking signals from Ecowatt.

      The `id_client` is needed for asking a bearer token.

      The `id_secret` is needed for asking a bearer token.

      The `debug` can add verbosity.

      Set `expected_update_period_in_days` to the maximum amount of time that you'd expect to pass between Events being created by this Agent.

    MD

    event_description <<-MD
      Events look like this:

          {
            "signals": [
              {
                "GenerationFichier": "2022-12-07T23:00:00+01:00",
                "jour": "2022-12-08T00:00:00+01:00",
                "dvalue": 1,
                "message": "Pas d’alerte.",
                "values": [
                  {
                    "pas": 0,
                    "hvalue": 1
                  },
                  {
                    "pas": 1,
                    "hvalue": 1
                  },
                  {
                    "pas": 2,
                    "hvalue": 1
                  },
                  {
                    "pas": 3,
                    "hvalue": 1
                  },
                  {
                    "pas": 4,
                    "hvalue": 1
                  },
                  {
                    "pas": 5,
                    "hvalue": 1
                  },
                  {
                    "pas": 6,
                    "hvalue": 1
                  },
                  {
                    "pas": 7,
                    "hvalue": 1
                  },
                  {
                    "pas": 8,
                    "hvalue": 1
                  },
                  {
                    "pas": 9,
                    "hvalue": 1
                  },
                  {
                    "pas": 10,
                    "hvalue": 1
                  },
                  {
                    "pas": 11,
                    "hvalue": 1
                  },
                  {
                    "pas": 12,
                    "hvalue": 1
                  },
                  {
                    "pas": 13,
                    "hvalue": 1
                  },
                  {
                    "pas": 14,
                    "hvalue": 1
                  },
                  {
                    "pas": 15,
                    "hvalue": 1
                  },
                  {
                    "pas": 16,
                    "hvalue": 1
                  },
                  {
                    "pas": 17,
                    "hvalue": 1
                  },
                  {
                    "pas": 18,
                    "hvalue": 1
                  },
                  {
                    "pas": 19,
                    "hvalue": 1
                  },
                  {
                    "pas": 20,
                    "hvalue": 1
                  },
                  {
                    "pas": 21,
                    "hvalue": 1
                  },
                  {
                    "pas": 22,
                    "hvalue": 1
                  },
                  {
                    "pas": 23,
                    "hvalue": 1
                  }
                ]
              },
              {
                "GenerationFichier": "2022-12-07T23:00:00+01:00",
                "jour": "2022-12-09T00:00:00+01:00",
                "dvalue": 1,
                "message": "Pas d’alerte.",
                "values": [
                  {
                    "pas": 0,
                    "hvalue": 1
                  },
                  {
                    "pas": 1,
                    "hvalue": 1
                  },
                  {
                    "pas": 2,
                    "hvalue": 1
                  },
                  {
                    "pas": 3,
                    "hvalue": 1
                  },
                  {
                    "pas": 4,
                    "hvalue": 1
                  },
                  {
                    "pas": 5,
                    "hvalue": 1
                  },
                  {
                    "pas": 6,
                    "hvalue": 1
                  },
                  {
                    "pas": 7,
                    "hvalue": 1
                  },
                  {
                    "pas": 8,
                    "hvalue": 1
                  },
                  {
                    "pas": 9,
                    "hvalue": 1
                  },
                  {
                    "pas": 10,
                    "hvalue": 1
                  },
                  {
                    "pas": 11,
                    "hvalue": 1
                  },
                  {
                    "pas": 12,
                    "hvalue": 1
                  },
                  {
                    "pas": 13,
                    "hvalue": 1
                  },
                  {
                    "pas": 14,
                    "hvalue": 1
                  },
                  {
                    "pas": 15,
                    "hvalue": 1
                  },
                  {
                    "pas": 16,
                    "hvalue": 1
                  },
                  {
                    "pas": 17,
                    "hvalue": 1
                  },
                  {
                    "pas": 18,
                    "hvalue": 1
                  },
                  {
                    "pas": 19,
                    "hvalue": 1
                  },
                  {
                    "pas": 20,
                    "hvalue": 1
                  },
                  {
                    "pas": 21,
                    "hvalue": 1
                  },
                  {
                    "pas": 22,
                    "hvalue": 1
                  },
                  {
                    "pas": 23,
                    "hvalue": 1
                  }
                ]
              },
              {
                "GenerationFichier": "2022-12-07T23:00:00+01:00",
                "jour": "2022-12-10T00:00:00+01:00",
                "dvalue": 1,
                "message": "Pas d’alerte.",
                "values": [
                  {
                    "pas": 0,
                    "hvalue": 1
                  },
                  {
                    "pas": 1,
                    "hvalue": 1
                  },
                  {
                    "pas": 2,
                    "hvalue": 1
                  },
                  {
                    "pas": 3,
                    "hvalue": 1
                  },
                  {
                    "pas": 4,
                    "hvalue": 1
                  },
                  {
                    "pas": 5,
                    "hvalue": 1
                  },
                  {
                    "pas": 6,
                    "hvalue": 1
                  },
                  {
                    "pas": 7,
                    "hvalue": 1
                  },
                  {
                    "pas": 8,
                    "hvalue": 1
                  },
                  {
                    "pas": 9,
                    "hvalue": 1
                  },
                  {
                    "pas": 10,
                    "hvalue": 1
                  },
                  {
                    "pas": 11,
                    "hvalue": 1
                  },
                  {
                    "pas": 12,
                    "hvalue": 1
                  },
                  {
                    "pas": 13,
                    "hvalue": 1
                  },
                  {
                    "pas": 14,
                    "hvalue": 1
                  },
                  {
                    "pas": 15,
                    "hvalue": 1
                  },
                  {
                    "pas": 16,
                    "hvalue": 1
                  },
                  {
                    "pas": 17,
                    "hvalue": 1
                  },
                  {
                    "pas": 18,
                    "hvalue": 1
                  },
                  {
                    "pas": 19,
                    "hvalue": 1
                  },
                  {
                    "pas": 20,
                    "hvalue": 1
                  },
                  {
                    "pas": 21,
                    "hvalue": 1
                  },
                  {
                    "pas": 22,
                    "hvalue": 1
                  },
                  {
                    "pas": 23,
                    "hvalue": 1
                  }
                ]
              },
              {
                "GenerationFichier": "2022-12-07T23:00:00+01:00",
                "jour": "2022-12-11T00:00:00+01:00",
                "dvalue": 1,
                "message": "Pas d’alerte.",
                "values": [
                  {
                    "pas": 0,
                    "hvalue": 1
                  },
                  {
                    "pas": 1,
                    "hvalue": 1
                  },
                  {
                    "pas": 2,
                    "hvalue": 1
                  },
                  {
                    "pas": 3,
                    "hvalue": 1
                  },
                  {
                    "pas": 4,
                    "hvalue": 1
                  },
                  {
                    "pas": 5,
                    "hvalue": 1
                  },
                  {
                    "pas": 6,
                    "hvalue": 1
                  },
                  {
                    "pas": 7,
                    "hvalue": 1
                  },
                  {
                    "pas": 8,
                    "hvalue": 1
                  },
                  {
                    "pas": 9,
                    "hvalue": 1
                  },
                  {
                    "pas": 10,
                    "hvalue": 1
                  },
                  {
                    "pas": 11,
                    "hvalue": 1
                  },
                  {
                    "pas": 12,
                    "hvalue": 1
                  },
                  {
                    "pas": 13,
                    "hvalue": 1
                  },
                  {
                    "pas": 14,
                    "hvalue": 1
                  },
                  {
                    "pas": 15,
                    "hvalue": 1
                  },
                  {
                    "pas": 16,
                    "hvalue": 1
                  },
                  {
                    "pas": 17,
                    "hvalue": 1
                  },
                  {
                    "pas": 18,
                    "hvalue": 1
                  },
                  {
                    "pas": 19,
                    "hvalue": 1
                  },
                  {
                    "pas": 20,
                    "hvalue": 1
                  },
                  {
                    "pas": 21,
                    "hvalue": 1
                  },
                  {
                    "pas": 22,
                    "hvalue": 1
                  },
                  {
                    "pas": 23,
                    "hvalue": 1
                  }
                ]
              }
            ]
          }
    MD

    def default_options
      {
        'type' => '',
        'id_client' => '',
        'id_secret' => '',
        'debug' => 'false',
        'emit_events' => 'true',
        'expected_receive_period_in_days' => '2',
        'changes_only' => 'true'
      }
    end

    form_configurable :type, type: :array, values: ['ecowatt_signal']
    form_configurable :id_client, type: :string
    form_configurable :id_secret, type: :string
    form_configurable :debug, type: :boolean
    form_configurable :emit_events, type: :boolean
    form_configurable :expected_receive_period_in_days, type: :string
    form_configurable :changes_only, type: :boolean
    def validate_options
      errors.add(:base, "type has invalid value: should be 'ecowatt_signal'") if interpolated['type'].present? && !%w(ecowatt_signal).include?(interpolated['type'])

      unless options['id_client'].present?
        errors.add(:base, "id_client is a required field")
      end

      unless options['id_secret'].present?
        errors.add(:base, "id_secret is a required field")
      end

      if options.has_key?('emit_events') && boolify(options['emit_events']).nil?
        errors.add(:base, "if provided, emit_events must be true or false")
      end

      if options.has_key?('changes_only') && boolify(options['changes_only']).nil?
        errors.add(:base, "if provided, changes_only must be true or false")
      end

      if options.has_key?('debug') && boolify(options['debug']).nil?
        errors.add(:base, "if provided, debug must be true or false")
      end

      unless options['expected_receive_period_in_days'].present? && options['expected_receive_period_in_days'].to_i > 0
        errors.add(:base, "Please provide 'expected_receive_period_in_days' to indicate how many days can pass before this Agent is considered to be not working")
      end
    end

    def working?
      event_created_within?(options['expected_receive_period_in_days']) && !recent_error_logs?
    end

    def check
      trigger_action
    end

    private

    def log_curl_output(code,body)

      log "request status : #{code}"

      if interpolated['debug'] == 'true'
        log "body"
        log body
      end

    end

    def get_token()
      merged_secret = interpolated['id_client'] + ":" + interpolated['id_secret']
      log merged_secret
      secret = Base64.encode64(merged_secret).gsub("\n", '')
      log secret
      uri = URI.parse("https://digital.iservices.rte-france.com/token/oauth/")
      request = Net::HTTP::Get.new(uri)
      request["Authorization"] = "Basic #{secret.to_s}"
      
      req_options = {
        use_ssl: uri.scheme == "https",
      }
      
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end

      log_curl_output(response.code,response.body)
      response = JSON.parse(response.body)
      return response['access_token']

    end

    def ecowatt_signal()
      uri = URI.parse("https://digital.iservices.rte-france.com/open_api/ecowatt/v4/signals")
      request = Net::HTTP::Get.new(uri)
      request["Authorization"] = "Bearer #{get_token()}"
      
      req_options = {
        use_ssl: uri.scheme == "https",
      }
      
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end

      log_curl_output(response.code,response.body)

      payload = JSON.parse(response.body)
      create_event payload: payload
    end


    def trigger_action

      case interpolated['type']
      when "ecowatt_signal"
        ecowatt_signal()
      else
        log "Error: type has an invalid value (#{type})"
      end
    end
  end
end
