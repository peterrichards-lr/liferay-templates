<!-- update the Date00873511 reference to the date field within the structure that needs to be displayed -->
<#assign Date00873511_Data = getterUtil.getString(Date00873511.getData())>
<style>
.date-display {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-wrap: nowrap;
    -ms-flex-wrap: nowrap;
    flex-wrap: nowrap;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

.date-display .date-display-content {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex: 1 0 auto;
    -ms-flex: 1 0 auto;
    flex: 1 0 auto;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    background-color: #f5f5f5;
    border-radius: 5px;
    padding: 15px 24px;
    width: 325px;
    height: 95px;
    margin-right: 7px;
}

.date-display .date-display-content .date-display-content__icon {
	font-size: 1rem;
	margin-right: .75rem;
}

.date-display .date-display-content .date-display-content__date {
    font-size: 1.25rem;
    font-weight: 500;
    position: relative;
    top: -1px;
		text-align: center;
}

.date-display .date-display-content .date-display-content__month {
    color: #757575;
    font-size: 0.875rem;
    font-weight: 500;
		display: block;
}
</style>
<div class="date-display">
	<div class="date-display-content">
	<#if validator.isNotNull(Date00873511_Data)>
		<#assign Date00873511_DateObj = dateUtil.parseDate("yyyy-MM-dd", Date00873511_Data, locale)>
		<#assign dateDay = dateUtil.getDate(Date00873511_DateObj, "dd", locale)>
		<#assign dateMonth = dateUtil.getDate(Date00873511_DateObj, "MMM", locale)>
		<span class="date-display-content__icon">[@clay["icon"] symbol="calendar" /]</span>
		<div class="date-display-content__date">
			${dateDay}
			<span class="date-display-content__month">${dateMonth}</span>
		</div>
	</div>
	</#if>
</div>