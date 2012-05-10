module RulesHelper
  def build_sql_query
    @rule = Rule.find(params[:id])
    db_name = "db_name"
    table_name = "table_name"

    temp_sql = "select `#{db_name}`.`#{table_name}`.* from `#{db_name}`.`#{table_name}` where "
    #add limits
    #add source to sql statement
    if not @rule.source.blank?
      temp_sql.concat("source =\"#{@rule.source}\"")
    end
    #add customer no to sql statement
    if not @rule.cust_no.blank?
      temp_sql.concat(" and cust_no =\"#{@rule.cust_no}\"")
    end
    #add call_type to sql statement
    if @rule.call_type != "NULL"
      temp_sql.concat(" and call_type =\"#{@rule.call_type}\"")
    end
    #add priority to sql statement
    if @rule.priority != 0
      temp_sql.concat(" and priority =#{@rule.priority}")
    end
    #add group_id to sql statement
    if not @rule.group_id.blank?
      temp_sql.concat(" and group_id =\"#{@rule.group_id}\"")
    end
    #add entitlement_code to sql statement
    if not @rule.entitlement_code.blank?
      temp_sql.concat(" and entitlement_code =\"#{@rule.entitlement_code}\"")
    end
    #add where for rule
    temp_sql.concat(" where ")
    if @rule.milestone_operator != "NULL"
      #add case statement
      case @rule.milestone_operator
        when "="
          temp_sql.concat(" milestone =\"#{@rule.milestone_value}\"")
          if @rule.milestone_time_value != "NULL"
            temp_sql.concat(" and milestone_timestamp >\"#{@rule.milestone_time_value}#{@rule.milestone_time_value_denomination}\"")
          end
        when "count"
          temp_sql.concat(" !!!add count for milestones!!! ")
      end
      #ensure duration is only able to be used through equals
    end

    return temp_sql
  end
end
