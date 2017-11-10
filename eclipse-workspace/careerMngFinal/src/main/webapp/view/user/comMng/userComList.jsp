<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <div class="clearfix"></div>
              <div class="row" style="display: flex; justify-content: center;">
                <div class="col-md-8 col-sm-12 col-xs-12" >
                    <div class="x_panel">
                      <div class="x_title" style="display: flex; justify-content: center;">
                        <h2>사원 리스트 </h2>
                        
                      </div>

                      <div class="x_content">
                           <a href="<%=request.getContextPath()%>/served/inputCom.do" class="btn btn-success btn-xs"><i class="fa fa-share"></i> 회사추가하기 </a>

                        <div class="table-responsive">
                          <table class="table table-striped jambo_table">
                            <thead>
                              <tr class="headings">
                                <th class="column-title">회사명 </th>
                                <th class="column-title">사업자등록번호 </th>
                                <th class="column-title">연락처 </th>
                                <th class="column-title">부서 </th>
                                <th class="column-title">담당업무 </th>
                                <th class="column-title">직급 </th>
                                <th class="column-title">근무기간 </th>
                              </tr>
                            </thead>
                            <tbody>
								 <c:forEach var="ServedVO" items="${servedList}" varStatus="status">
				                <c:choose>
								    <c:when test="${status.count%2 eq 0}">
						                <tr class="odd pointer">
								    </c:when>
								    <c:when test="${status.count%2 eq 1}">
										<tr class="even pointer">
								    </c:when>
								</c:choose>
				                	<td>${ServedVO.comName}</td>
				                	<td>${ServedVO.comNum}</td>
				                	<td>${ServedVO.comTel}</td>
				                	<td>${ServedVO.dept}</td>
				                	<td>${ServedVO.task}</td>
				                	<td>${ServedVO.spot}</td>
				                	<td>${ServedVO.task_start_date}~${ServedVO.task_end_date}</td>
				                </tr>
				               </c:forEach>
							</tbody>
						</table>
					</div>	
                  </div>
                </div>
              </div>	
				</div>	